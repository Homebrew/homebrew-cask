cask "porting-kit" do
  version "4.1.52"
  sha256 "19978326e29cb25935c82eac112e3b2c16ee48959db271e15b6b92e99fbfdb7a"

  url "https://portingkit.com/pub/portingkit/Porting%20Kit-#{version}-mac.zip"
  name "Porting Kit"
  desc "Install games and apps compiled for Microsoft Windows"
  homepage "https://portingkit.com/"

  # We don't use the `ElectronBuilder` strategy because the YAML has
  # an unquoted `releaseDate` which is parsed as a scalar timestamp.
  # This currently errors as Time is not specified as a permitted class.
  livecheck do
    url "https://portingkit.com/pub/portingkit/latest-mac.yml"
    regex(/Porting(?:%20|\s*)Kit[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip/i)
  end

  auto_updates true

  app "Porting Kit.app"
end
