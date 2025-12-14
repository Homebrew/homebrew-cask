cask "glkvm" do
  version "1.3.0"
  sha256 "0af45164cda49a10aea78556fd7b5c5655ec84b4d51e72eb177b6169600c877c"

  url "https://static.gl-inet.com/edge-app/kvm-mac/#{version}-release1/1765244166600/gl-kvm-#{version}.dmg"
  name "GLKVM"
  desc "App for controlling GL.iNet KVM devices"
  homepage "https://www.gl-inet.com/"

  livecheck do
    url "https://www.gl-inet.com/app-rm/"
    regex(%r{href=.*?/kvm-mac/v?(\d+(?:\.\d+)+)-release\d+/.*?\.dmg}i)
  end

  app "GLKVM.app"

  zap trash: [
    "~/Library/Application Support/gl-kvm",
    "~/Library/Logs/gl-kvm",
  ]

  caveats do
    requires_rosetta
  end
end
