cask "principle" do
  version "5.14"
  sha256 "7772a9dbaa6312211d897b222160e9c7aa3eed81ef10af47c268cf7fa3bee288"

  url "https://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast "https://principleformac.com/update2.xml"
  name "Principle"
  homepage "https://principleformac.com/"

  depends_on macos: ">= :high_sierra"

  app "Principle.app"
end
