cask "izip" do
  version "4.9.51"
  sha256 :no_check

  url "https://www.izip.com/izip.dmg"
  name "iZip"
  desc "App to manage ZIP, ZIPX, RAR, TAR, 7ZIP and other compressed files"
  homepage "https://www.izip.com/"

  livecheck do
    url "https://www.izip.com/download"
    regex(%r{<li>Version:?\s*(\d+(?:\.\d+)+)</li>}i)
  end

  depends_on macos: ">= :big_sur"

  app "iZip.app"

  zap trash: "~/Library/Preferences/com.codeius.izip.plist"
end
