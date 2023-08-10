# frozen_string_literal: true

cask "calendr" do
  version "1.10.2"
  sha256 "0ed284ed1b98680512e32258695514f8d6d069698b61e50cf23358e13c64edcd"

  url "https://github.com/pakerwreah/Calendr/releases/download/v#{version}/Calendr.app.zip"
  name "Calendr.app"
  desc "Menu bar calendar"
  homepage "https://github.com/pakerwreah/Calendr"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Calendr.app"
end
