cask "font-laila" do
  version "2.000"
  sha256 "caa87cae373702288a7510c74881077aa15e3b5c94a4746b61f3f977d8499f73"

  url "https://github.com/itfoundry/laila/releases/download/v#{version}/laila-#{version.dots_to_underscores}.zip"
  name "Laila"
  homepage "https://github.com/itfoundry/laila"

  font "Laila-Bold.otf"
  font "Laila-Light.otf"
  font "Laila-Medium.otf"
  font "Laila-Regular.otf"
  font "Laila-SemiBold.otf"

  # No zap stanza required
end
