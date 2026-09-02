cask "font-kikai-chokoku-jis" do
  version "0.320"
  sha256 "8702e0e538a8ae423a8bf8ea60abdafa07414b04388adfdab8311afdfde1b1e4"

  url "https://font.kim/distribution/fk-kikaichokoku-v#{version.no_dots}.zip"
  name "Kikai Chokoku JIS"
  name "機械彫刻用標準書体フォント"
  homepage "https://font.kim/"

  livecheck do
    url :homepage
    regex(/href=.*?fk-kikaichokoku[._-]v?(\d+(?:\.\d+)*)\.zip/i)
    strategy :page_match do |page, regex|
      ver = page.scan(regex).map { |match| match[0] }.max
      next ver if ver.include?(".")

      # Find version text with dot(s) that matches dotless version
      dotted_ver = nil
      page.scan(%r{<td[^>]*?>\s*v?(\d+(?:\.\d+)+)\s*</td>}i).each do |match|
        dotless_ver = DSL::Version.new(match[0]).no_dots

        if ver == dotless_ver
          dotted_ver = match[0]
          break
        end
      end

      dotted_ver
    end
  end

  font "fkKikaiChokoku.otf"

  # No zap stanza required
end
