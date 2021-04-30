cask "clix" do
  version "2.4.0.0"
  sha256 :no_check

  url "https://rixstep.com/4/0/clix//clix.zip"
  name "CLIX"
  homepage "https://rixstep.com/4/0/clix/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.rixstep.CLIX"].version
    end
  end

  app "CLIX/CLIX.app"

  preflight do
    set_permissions "#{staged_path}/CLIX/CLIX.app", "0755"
  end

  postflight do
    set_permissions "#{appdir}/CLIX/CLIX.app", "0700"
  end
end
