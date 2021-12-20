cask "burp-suite-professional" do
  version "2021.10.3"
  sha256 "c96f482d59e34e424c73da3bd265366f487bdf1bae32590755880cded2c9bd9e"

  url "https://portswigger.net/burp/releases/download?product=pro&version=#{version}&type=MacOsx"
  name "Burp Suite Professional"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/pro"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :page_match do |page|
      all_versions = JSON.parse(page)["ResultSet"]["Results"]
      next if all_versions.blank?

      all_versions.map do |item|
        item["version"] if
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Professional") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == "MacOsx"
              end
      end.compact
    end
  end

  installer script: {
    executable: "Burp Suite Professional Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
    sudo:       true,
  }

  postflight do
    set_ownership "/Applications/Burp Suite Professional.app"
    set_permissions "/Applications/Burp Suite Professional.app", "a+rX"
  end

  uninstall delete: "/Applications/Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
