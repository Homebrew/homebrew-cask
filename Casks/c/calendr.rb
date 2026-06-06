cask "calendr" do
  version "1.21.4"
  sha256 "06addfeba880a29247bfe1926275a7061fb7ce387dfdbb84b2b57e2fd0104b9f"

  url "https://github.com/pakerwreah/Calendr/releases/download/v#{version}/Calendr.zip"
  name "Calendr"
  desc "Menu bar calendar"
  homepage "https://github.com/pakerwreah/Calendr"

  depends_on macos: :sonoma

  app "Calendr.app"

  zap trash: [
    "~/Library/Application Scripts/br.paker.Calendr",
    "~/Library/Containers/br.paker.Calendr",
  ]
end
