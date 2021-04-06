cask "multifirefox" do
  version "2.4.0"
  sha256 "7b0cac19469d6a222b4254c0c6ef27cafe847ce89e1efb398d3637f1425645dc"

  url "https://mff_sparkle.s3.amazonaws.com/MultiFirefox_#{version}.zip",
      verified: "mff_sparkle.s3.amazonaws.com/"
  appcast "https://mff_sparkle.s3.amazonaws.com/MultiFirefoxAppcast2.xml"
  name "MultiFirefox"
  homepage "https://davemartorana.com/multifirefox/"

  app "MultiFirefox.app"
end
