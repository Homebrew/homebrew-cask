cask "ipatool" do
  version "1.0.1"
  sha256 "3f32a497d7cc8115ff2a7e05c49ce62334b88e9dacfa979f290b941d4de27200"

  url "https://github.com/majd/ipatool/releases/download/v#{version}/ipatool"
  name "IPATool"
  desc "CLI tool for searching and downloading iOS app packages from the App Store"
  homepage "https://github.com/majd/ipatool"

  depends_on macos: ">= :el_capitan"

  binary "ipatool"

  postflight do
    system "xattr", "-d", "com.apple.quarantine", "#{HOMEBREW_PREFIX}/bin/ipatool"
  end
end
