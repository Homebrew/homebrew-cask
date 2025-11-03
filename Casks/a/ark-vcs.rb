cask "ark-vcs" do
  version "0.13.1"
  sha256 "34878e3665f588774975515c9fb68461bf4fe819b814ead46fd70a442a995997"

  url "https://ark-vcs.com/static/versions/Ark-Vcs_#{version.tr(".", "_")}_mac.zip"
  name "ark-vcs"
  desc "Version control system built for performance and handling binary files"
  homepage "https://ark-vcs.com/index.html"

  livecheck do
    url "https://ark-vcs.com/download.html"
    strategy :page_match do |page|
      match = page.match(/Ark-Vcs_(\d+)_(\d+)_(\d+)_mac\.zip/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
  end

  depends_on macos: ">= :big_sur"

  rename "Ark-Vcs_#{version.tr(".", "_")}/readme.md", "Ark-Vcs_#{version.tr(".", "_")}/ark.1"

  app "Ark-Vcs_#{version.tr(".", "_")}/Ark Vcs.app"
  binary "Ark-Vcs_#{version.tr(".", "_")}/ark"
  manpage "Ark-Vcs_#{version.tr(".", "_")}/ark.1"

  zap trash: "~/Ark-Vcs/"
end
