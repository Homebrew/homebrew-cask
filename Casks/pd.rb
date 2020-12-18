cask "pd" do
  version "0.51-3"
  sha256 "e7cfc86b612e49914398f069ea9beb65285842c0b4c645acbe08eea4a9ecffa6"

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  appcast "http://msp.ucsd.edu/software.html"
  name "Pd"
  homepage "http://msp.ucsd.edu/software.html"

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", "u+w"
  end
end
