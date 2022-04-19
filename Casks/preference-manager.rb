cask "preference-manager" do
  version "4.5.3.0"
  sha256 "16a71f08a8e2f3fae5b8c4634e67f8378a0947fb8f85f87e6e63641bc5441e49"

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
