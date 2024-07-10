cask "dropletmanager" do
  version "0.5.0"
  sha256 "ed8011cef55f3bcdde4e7e7e331775808e4701fc41acc3191d3e4d80f8ab8335"

  url "https://github.com/deivuh/DODropletManager-OSX/releases/download/v#{version}/DropletManager.v#{version}.zip"
  name "DigitalOcean Droplets Manager"
  desc "Digital Ocean droplet manager"
  homepage "https://github.com/deivuh/DODropletManager-OSX"

  disable! date: "2024-07-10", because: :unmaintained

  app "DropletManager.app"

  caveats do
    requires_rosetta
  end
end
