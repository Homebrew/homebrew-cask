cask "eclipse-php" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.22.0,2021-12"

  if Hardware::CPU.intel?
    sha256 "9a6fb55f6bbc51401324241cf5598d228de4b417c12eadaa40ec85fba41164e0"
  else
    sha256 "63224429da78386946381c6cec4808d07b5485f9878246dccd9713a331012b6c"
  end

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-php-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for PHP Developers"
  desc "Eclipse IDE for PHP developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse PHP.app"
end
