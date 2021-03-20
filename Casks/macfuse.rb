cask "macfuse" do
  version "4.1.0"
  sha256 "3cb6a49406fd036c50ef1b4ad717a377f4dcf182811bde172d69f1c289791085"

  url "https://github.com/osxfuse/osxfuse/releases/download/macfuse-#{version}/macfuse-#{version}.dmg",
      verified: "github.com/osxfuse/osxfuse/"
  appcast "https://github.com/osxfuse/osxfuse/releases.atom"
  name "macFUSE"
  desc "File system integration"
  homepage "https://osxfuse.github.io/"

  pkg "Extras/macFUSE #{version}.pkg"

  postflight do
    set_ownership ["/usr/local/include", "/usr/local/lib"]
  end

  uninstall pkgutil: [
    "io.macfuse.installer.components.core",
    "io.macfuse.installer.components.preferencepane",
  ]

  caveats do
    reboot
  end
end
