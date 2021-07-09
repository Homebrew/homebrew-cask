cask "porting-kit" do
  version "4.2.0"
  sha256 "04c681e28a3dcdebe94b810683633293c4c55ba4a525725219e58ea5cd4052ac"

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
