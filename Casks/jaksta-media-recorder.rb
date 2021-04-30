cask "jaksta-media-recorder" do
  version "2.2.5"
  sha256 "f5bb7554c1361c574dcada598ce53f6b38e198395513466e3fa23f21a4dcf324"

  url "https://www.jaksta.com/services/download/mac/jaksta-media-recorder/#{version}"
  appcast "https://www.jaksta.com/Services/VersionDirector/jmr-mac"
  name "Jaksta"
  homepage "https://www.jaksta.com/products"

  container type: :naked

  pkg "JMR.pkg"

  # This is a horrible hack to force the file extension.
  # The backend code should be fixed so that this is not needed.
  preflight do
    system_command "/bin/mv", args: ["--", staged_path.join(version.to_s), staged_path.join("JMR.pkg")]
  end

  uninstall pkgutil:   "com.shedworx.Jaksta",
            launchctl: "com.ProxyConfigDaemon"
end
