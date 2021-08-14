cask "porting-kit" do
  version "4.2.14"
  sha256 "3f4718e1e2b21a38c7a7d776a3be8a2419adc66c57120700167cab4c89fc96f4"

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
