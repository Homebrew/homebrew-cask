cask "secure-pipes" do
  version "0.99.11,c67223c50be3604"
  sha256 "de8b6ad6c42509f2c394997694c13a161dcb4f74edfa87f5a63d7362897538f5"

  url "https://www.opoet.com/pyro/index.php/files/download/#{version.csv.second}"
  name "Secure Pipes"
  desc "Manage SSH tunnels"
  homepage "https://www.opoet.com/pyro/index.php/"

  livecheck do
    url :homepage
    regex(/filename.*?Secure\s+Pipes\s+v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      download_hash = page.scan(%r{opoet.com/pyro/index.php/files/download/(.+)["'< ]}i).flatten.first
      next if download_hash.blank?

      download_url = "https://www.opoet.com/pyro/index.php/files/download/#{download_hash}"

      headers = Homebrew::Livecheck::Strategy.page_headers(download_url)
      next if headers.blank?

      match = headers.first["content-disposition"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{download_hash}"
    end
  end

  app "Secure Pipes.app"

  caveats do
    requires_rosetta
  end
end
