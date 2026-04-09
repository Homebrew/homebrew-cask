# typed: strict
# frozen_string_literal: true

cask "meta-grabber" do
  version "1.1.0"
  sha256 "80e13d9d9d72a275a094da2473158a134c3a1608f9acaa3f634e7c64f095b1f9"

  url "https://github.com/andreaswilli/meta-grabber/releases/download/v#{version}/Meta-Grabber-#{version}-mac.dmg"
  name "Meta Grabber"
  desc "Grab metadata for TV shows and rename files on your hard disk"
  homepage "https://github.com/andreaswilli/meta-grabber"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Meta Grabber.app"
end
