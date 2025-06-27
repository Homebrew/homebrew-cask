cask "playdate-simulator" do
  version "2.7.5"
  sha256 "de420a3f6e93d1ba53054142bd78b85a3c29a73a67947912c4d0187f0285eeac"

  url "https://download-cdn.panic.com/playdate_sdk/PlaydateSDK-#{version}.zip",
      verified: "download-cdn.panic.com/playdate_sdk/"
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
      Utils.gain_permissions_remove(exec) if exec.exist? && exec.readlink.to_s.include?("playdate")
    end
  end

  uninstall pkgutil: "date.play.sdk",
            delete:  "/usr/local/playdate",
            trash:   "~/Developer/PlaydateSDK",
            rmdir:   "~/Developer"

  zap trash: "~/.Playdate"

  caveats do
    license "https://play.date/dev/sdk-license"
  end
end
