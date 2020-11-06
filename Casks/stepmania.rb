cask "stepmania" do
  version "5.0.12"
  sha256 "b49eb7f4405c8cc289053deb48c30edcd8517a2948853e77befe9073818eb336"

  # github.com/stepmania/stepmania/ was verified as official when first introduced to the cask
  url "https://github.com/stepmania/stepmania/releases/download/v#{version}/StepMania-#{version}-mac.dmg"
  appcast "https://github.com/stepmania/stepmania/releases.atom"
  name "StepMania"
  desc "Advanced rhythm game designed for both home and arcade use"
  homepage "https://www.stepmania.com/"

  app "StepMania-#{version}/Stepmania.app"
end
