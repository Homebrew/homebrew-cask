cask "preference-manager" do
  version "4.5.2.0"
  sha256 "780626b2e0a557f86e42ab899dadd727c1ef01f029ddd1ae98a4984365639971"

  url "https://www.digitalrebellion.com/download/prefman?version=#{version.no_dots}"
  name "Preference Manager"
  desc "Trash, backup, lock and restore video editor preferences"
  homepage "https://www.digitalrebellion.com/prefman/"

  livecheck do
    url "https://www.digitalrebellion.com/prefman/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/prefman\?version=(\d+(?:\.\d+)*)"}i)
      next if match.blank?

      match[1].gsub(/./, '\0.').chop.to_s
    end
  end

  app "Preference Manager.app"
end
