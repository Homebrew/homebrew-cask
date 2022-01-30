cask "izip" do
  version "3.9"
  sha256 :no_check

  url "https://www.izip.com/izip.dmg"
  name "iZip"
  desc "App to manage ZIP, ZIPX, RAR, TAR, 7ZIP and other compressed files"
  homepage "https://www.izip.com/"

  livecheck do
    url "https://www.izip.com/download"
    regex(%r{<li>Version:\s*(\d+(?:\.\d+)+)</li>}i)
  end

  depends_on macos: ">= :yosemite"

  app "iZip.app"

  zap trash: "~/Library/Preferences/com.codeius.izip.plist"
end
