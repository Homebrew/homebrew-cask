cask "framer" do
  version "52159,1597130637"
  sha256 "f4745a57fd2c42f8efd82d0c2f6c71405c5dadf5b9e2c699ec343cf7220e376f"

  url "https://dl.framer.com/com.framer.desktop/#{version.before_comma}/#{version.after_comma}/FramerDesktop-#{version.before_comma}.zip"
  appcast "https://updates.framer.com/sparkle/com.framer.desktop"
  name "Framer"
  homepage "https://www.framer.com/desktop/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Framer.app"
end
