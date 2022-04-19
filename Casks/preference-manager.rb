cask "preference-manager" do
  version "4.5.3.0"
  sha256 "3cb0c97e90871b9dbf4ec16e3edf0d3f89e7f5b1ae49651d4aea1e5629e3d0da"

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
