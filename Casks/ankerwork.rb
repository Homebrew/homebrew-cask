cask "ankerwork" do
  version "2.4.5"
  sha256 :no_check

  url "https://ankerwork.s3.us-west-2.amazonaws.com/prod/AnkerWork_Official.dmg",
      verified: "ankerwork.s3.us-west-2.amazonaws.com"
  name "ankerwork"
  desc "Designed to optimize and personalize your  products"
  homepage "https://us.ankerwork.com/pages/download-software"

  app "AnkerWork.app"
end
