cask "focusrite-control" do
  version "3.11.0.1983"
  sha256 "6563ce66aaec2cb24a31bc8bc91f0d819ecaafc515559f6a692c3c0d766c210c"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/downloads/Focusrite%20Control%20-%20#{version}.dmg"
  name "Focusrite Control"
  desc "Control your Focusrite interface"
  homepage "https://focusrite.com/en/focusrite-control"

  livecheck do
    url "https://downloads.focusrite.com/focusrite/scarlett-3rd-gen/scarlett-solo-3rd-gen"
    regex(%r{href=.*?/Focusrite%20Control%20-%20(\d+(?:\.\d+)+)\.dmg}i)
  end

  pkg "Focusrite Control.pkg"

  uninstall pkgutil:   "com.focusrite.FocusriteControl",
            launchctl: "com.focusrite.ControlServer"
end
