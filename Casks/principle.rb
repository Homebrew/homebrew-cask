cask "principle" do
  version "5.12"
  sha256 "a1b8f16b7845f3afd92c9e2bbbe86b590dac375d342b33d653b4171db276f157"

  url "https://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  appcast "https://principleformac.com/update2.xml"
  name "Principle"
  homepage "https://principleformac.com/"

  depends_on macos: ">= :high_sierra"

  app "Principle.app"
end
