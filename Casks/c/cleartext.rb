cask "cleartext" do
  version "2.45"
  sha256 "4b3d44a0666c2bf2dd838c0f190e9a5678b2dc4d76e83d70fe091295d4cabdbc"

  url "https://github.com/mortenjust/cleartext-mac/releases/download/#{version}/Cleartext.zip"
  name "Cleartext"
  desc "Text editor"
  homepage "https://github.com/mortenjust/cleartext-mac"

  deprecate! date: "2024-10-12", because: :discontinued

  app "Cleartext.app"

  caveats do
    requires_rosetta
  end
end
