cask "sonic3air" do
  version "21.09.28.0"
  sha256 "689c7de10c6a6f4c795902e470e63f3e49017970387d34ca932a66b33e1ee79c"

  url "https://projects.sappharad.com/s3air_mac/sonic3air_mac_#{version.major_minor_patch.no_dots}.dmg",
      verified: "projects.sappharad.com/s3air_mac/"
  name "Sonic 3 A.I.R."
  desc "Reimplementation of Sonic 3 & Knuckles (requires original game)"
  homepage "https://sonic3air.org/"

  livecheck do
    url "https://projects.sappharad.com/s3air_mac/"
    strategy :page_match do |page|
      page.scan(/v(\d\d\.\d\d\.\d\d\.?\d?)/i)
          .map { |match| match&.first }
    end
  end

  app "Sonic 3 AIR.app"
  artifact "Manual.pdf", target: "#{ENV["HOME"]}/Library/Application Support/sonic3air/Manual.pdf"
  artifact "doc", target: "#{ENV["HOME"]}/Library/Application Support/sonic3air/doc"
  artifact "bonus", target: "#{ENV["HOME"]}/Library/Application Support/sonic3air/bonus"

  zap trash: [
    "~/Library/Application Support/sonic3air",
  ]
end
