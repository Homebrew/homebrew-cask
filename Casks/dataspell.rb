cask "dataspell" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2021.3,213.5744.251"

  url "https://download.jetbrains.com/python/dataspell-#{version.before_comma}#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "99c66a49404233f69360d33b4b9d04154e7ce88a4396c7d29f2abff5f24b8d48"
  else
    sha256 "f1b59c3472b455a03a9d77d4432c279a1267e5b80258734bb9263ed5c88d0246"
  end

  name "DataSpell"
  desc "IDE for Professional Data Scientists"
  homepage "https://www.jetbrains.com/dataspell/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DS&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["DS"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DataSpell 2021.3.app", target: "DataSpell.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "dataspell") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/DataSpell#{version.major_minor}",
    "~/Library/Application Support/DataSpell#{version.major_minor}",
    "~/Library/Caches/JetBrains/DataSpell#{version.major_minor}",
    "~/Library/Logs/JetBrains/DataSpell#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.dataspell.plist",
    "~/Library/Preferences/jetbrains.dataspell.*.plist",
    "~/Library/Preferences/DataSpell#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.dataspell.savedState",
  ]
end
