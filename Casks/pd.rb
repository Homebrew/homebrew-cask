cask "pd" do
  version "0.51-2"
  sha256 "b09ad89ad6f419b410644ef7d8dcf34459d21a7ab61a593244ecfaae2ca3f3c9"

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  appcast "http://msp.ucsd.edu/software.html"
  name "Pd"
  homepage "http://msp.ucsd.edu/software.html"

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", "u+w"
  end
end
