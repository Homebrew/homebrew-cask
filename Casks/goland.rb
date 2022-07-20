cask "goland" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2022.1.4,221.6008.15"

  if Hardware::CPU.intel?
    sha256 "7eb050aae9eb92d05c877f2f71710bd57258fc129ec9c83c2b1da9375cf847e5"
  else
    sha256 "2b497cc725a24bccc4599808e6b7513fc884240ac08b3b749cea472373298c20"
  end

  url "https://download.jetbrains.com/go/goland-#{version.csv.first}#{arch}.dmg"
  name "Goland"
  desc "Go (golang) IDE"
  homepage "https://www.jetbrains.com/go/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["GO"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "GoLand.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "goland") }.each do |path|
      if File.readable?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/GoLand",
    "~/Library/Application Support/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Caches/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Logs/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.goland.plist",
    "~/Library/Preferences/GoLand#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.goland.SavedState",
  ]
end
