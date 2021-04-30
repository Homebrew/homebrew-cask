cask "nucleo" do
  version "2.6.1"
  sha256 "15488d5c51dd7ea3af414f68d6e5e855d880e0ef71a48ea08f00ab56e0f9a736"

  url "https://nucleo-app-releases.s3.amazonaws.com/mac/Nucleo_#{version}.zip",
      verified: "nucleo-app-releases.s3.amazonaws.com/"
  name "Nucleo"
  homepage "https://nucleoapp.com/"

  livecheck do
    url "https://nucleoapp.com/updates"
    strategy :page_match
    regex(%r{href=.*?/Nucleo_(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Nucleo.app"
end
