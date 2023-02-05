cask "jitouch" do
  name "jitouch"
  desc "Multi-touch gestures editor"
  homepage "https://www.jitouch.com/"
  
  depends_on macos: ">= :el_capitan"
  
  on_big_sur :or_older do
    on_el_capitan do
      version "2.63"
      sha256 :no_check
      url "https://www.jitouch.com/jitouch_el_capitan.zip"
    end
    on_high_sierra :or_older do
      version "2.71"
      sha256 :no_check
      url "https://www.jitouch.com/jitouch_sierra.zip"
    end
    on_big_sur :or_older do
      version "2.74-beta"
      sha256 :no_check
      url "https://www.jitouch.com/jitouch_mojave.zip"
    end
    
    prefpane "jitouch/Jitouch.prefPane"
  end
  
  on_monterey :or_newer do
    version "2.82.1"
    sha256 "3f5194a4da6fe19d17c843fa8a876131f7878905dcbb2e1d740d34d286d740c4"
    url "https://github.com/JitouchApp/Jitouch/releases/download/v#{version}/Install-Jitouch.pkg", verified: "github.com/JitouchApp/Jitouch/"
    
    livecheck do
      url :url
      strategy :github_latest
    end
    
    pkg "Install-Jitouch.pkg"
    uninstall do
      quit "com.jitouch.Jitouch"
      pkgutil "com.jitouch.Jitouch"
    end
  end

  zap trash: "~/Library/Preferences/com.jitouch.Jitouch.plist"
end
