cask "playdate-simulator" do
  version "2.0.3"
  sha256 "603e0d71d95d44e0e0f49cf3d1d71b86fcc1b586fbee4f46777ffca63c9dd243"

  url "https://download-keycdn.panic.com/playdate_sdk/PlaydateSDK-#{version}.zip",
      verified: "download-keycdn.panic.com/playdate_sdk/"
  name "Playdate SDK"
  desc "Playdate Lua and C APIs, docs and Simulator for local development"
  homepage "https://play.date/dev/"

  livecheck do
    url "https://download.panic.com/playdate_sdk/PlaydateSDK-latest.zip"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  pkg "PlaydateSDK.pkg"

  uninstall_preflight do
    Pathname("/usr/local/bin").glob("arm-*").each do |exec|
      exec.unlink if exec.exist? && exec.readlink.to_s.include?("playdate")
    end
  end
  
  uninstall pkgutil: "date.play.sdk",
            trash:   [
              "~/Developer/PlaydateSDK",
              "/usr/local/playdate"
            ],
            rmdir:   "~/Developer"

  zap trash: "~/.Playdate"

  caveats do
    license "https://play.date/dev/sdk-license"
  end
end
