cask "nitroshare" do
  version "0.3.4"
  sha256 "64a3c62631ea8676ec2fc4f011aabf119ad5b4916de5c1ef969138096584b808"

  url "https://launchpad.net/nitroshare/#{version.major_minor}/#{version}/+download/nitroshare-#{version}-osx.dmg"
  name "NitroShare"
  desc "Network file transfer application"
  homepage "https://launchpad.net/nitroshare"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "nitroshare.app"

  caveats do
    requires_rosetta
  end
end
