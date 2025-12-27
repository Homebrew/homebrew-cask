cask "font-kikai-chokoku-jis" do
  version "0.310"
  sha256 "a0c2b1cde05d89e34ec2b1b137f27ab23b768b89570fbd800c48dd2cd4a7c5a7"

  url "https://font.kim/ki-cho-jis_#{version.no_dots}.zip"
  name "Kikai Chokoku JIS"
  name "機械彫刻用標準書体フォント"
  homepage "https://font.kim/"

  livecheck do
    url :homepage
    regex(%r{<script\s+type="application/ld\+json">([^<]+)</script>}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      json = Homebrew::Livecheck::Strategy::Json.parse_json(match[1])
      json&.select { |item| item["name"] == "機械彫刻用標準書体 M" }
          &.map { |item| item["softwareVersion"] }
    end
  end

  font "KikaiChokokuJIS-Md.otf"

  # No zap stanza required
end
