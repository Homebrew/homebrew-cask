cask "jitouch" do
  name "jitouch"
  desc "Multi-touch gestures editor"
  homepage "https://www.jitouch.com/"
  
  depends_on macos: :el_capitan
  
  if MacOS.version <= :mojave
    if MacOS.version <= :el_capitan
      version "2.63"
      sha256 :no_check
      url "https://www.jitouch.com/jitouch_el_capitan.zip"
    elsif MacOS.version <= :sierra
      version "2.71"
      sha256 :no_check
      url "https://www.jitouch.com/jitouch_sierra.zip"
    else
      version "2.74-beta"
      sha256 :no_check
      url "https://www.jitouch.com/jitouch_mojave.zip"
    end
    
    prefpane "jitouch/Jitouch.prefPane"
  else
    version "2.82.1"
    sha256 "b75739545f7b79b63e284ae00c08be810a80bb18f124d857108a7b86914641d6"
    url "https://github.com/JitouchApp/Jitouch/releases/download/v#{version}/Install-Jitouch.pkg", verified: "github.com/JitouchApp/Jitouch/"
    
    livecheck do
      url :url
      strategy :github_latest
    end
    
    pkg "Install-Jitouch.pkg"
  end

  zap trash: "~/Library/Preferences/com.jitouch.Jitouch.plist"
end
