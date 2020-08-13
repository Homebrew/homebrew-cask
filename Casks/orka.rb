cask "orka" do
  version "1.4.0,d621805"
  sha256 "299ac64552bf3fbb0bd50d6a06b31fd575aa08d9b1384caf11b5e3f5af274404"

  # cli-builds-public.s3-eu-west-1.amazonaws.com/official/ was verified as official when first introduced to the cask
  url "https://cli-builds-public.s3-eu-west-1.amazonaws.com/official/#{version.before_comma}/#{version.after_comma}/macos/orka.zip"
  appcast "https://orkadocs.macstadium.com/docs/downloads"
  name "Orka CLI"
  homepage "https://orkadocs.macstadium.com/docs"

  binary "orka"
end
