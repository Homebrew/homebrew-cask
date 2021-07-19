cask "porting-kit" do
  version "4.2.7"
  sha256 "d85fd42363ad66840ad02c45257b024673fe31a1c03801b0ecdf0b1ece462e5a"

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
