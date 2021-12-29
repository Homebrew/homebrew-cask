cask "datagrip" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2021.3.3,213.6461.82"

  if Hardware::CPU.intel?
    sha256 "f0dc2324686f056256a18d46057169fbe692ca19d796327096026d19edb6f2d6"
  else
    sha256 "21e0e3a1a0c2bdc809430eea1011e929f120f290d8450de0070f641f752fe9d0"
  end

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.csv.first}#{arch}.dmg"
  name "DataGrip"
  desc "Databases & SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["DG"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DataGrip.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "datagrip") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip*",
    "~/Library/Caches/JetBrains/DataGrip*",
    "~/Library/Logs/JetBrains/DataGrip*",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
