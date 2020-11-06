cask "pd" do
  version "0.51-2"
  sha256 "a85ad613c59bde9465335d87d67702b45533620a88275348fed9aec495584775"

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  appcast "http://msp.ucsd.edu/software.html"
  name "Pd"
  homepage "http://msp.ucsd.edu/software.html"

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", "u+w"
  end
end
