cask "nucleo" do
  version "3.0.3"
  sha256 "120c08716cdaa428aaded4316206fbda76e6e5014cb6f2ebb705cd46da4cd19f"

  url "https://nucleo-app-releases.s3.amazonaws.com/mac/Nucleo_#{version}.zip",
      verified: "nucleo-app-releases.s3.amazonaws.com/"
  name "Nucleo"
  desc "Icon manager and library"
  homepage "https://nucleoapp.com/"

  livecheck do
    url "https://nucleoapp.com/updates"
    strategy :page_match
    regex(%r{href=.*?/Nucleo_(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Nucleo.app"
end
