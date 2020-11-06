cask "rapidweaver" do
  version "8.6.2,20836"
  sha256 "fb138240beaa0f0f27f4ba2314db8eadc36d168585b8ec366928fb9ed2cdad0b"

  # github.com/realmacsoftware/ was verified as official when first introduced to the cask
  url "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases/download/#{version.before_comma}-%28#{version.after_comma}%29/RapidWeaver#{version.major}.zip"
  appcast "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases.atom"
  name "RapidWeaver"
  desc "Web design software"
  homepage "https://www.realmacsoftware.com/rapidweaver/"

  depends_on macos: ">= :sierra"

  app "RapidWeaver #{version.major}.app"
end
