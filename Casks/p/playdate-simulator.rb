cask "playdate-simulator" do
  version "2.1.0"
  sha256 "4b0873446beb0c631996895be28d19b3b7fc1d7285c5419e7ed95cd9ba693882"

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
            trash:   "~/Developer/PlaydateSDK",
            delete:  "/usr/local/playdate",
            rmdir:   "~/Developer"

  zap trash: "~/.Playdate"

  caveats do
    license "https://play.date/dev/sdk-license"
  end
end
