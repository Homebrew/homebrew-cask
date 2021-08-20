cask "nozbe" do
  version "3.20.1"
  sha256 "1cf4461e172b66b486c24e1dbc6177559e921bf10e100b74262a165e44cee876"

  url "https://files.nozbe.com/#{version.no_dots}/release/Nozbe.app.zip"
  name "Nozbe"
  desc "Task manager"
  homepage "https://nozbe.com/"

  livecheck do
    url "https://nozbe.com/mac"
    strategy :header_match do |headers|
      # example: location: https://files2.nozbe.com/3201/release/Nozbe.app.zip
      match = headers["location"].match(%r{/v?(\d)(\d+)(\d+)/release/Nozbe}i)
      # not perfect, will fail when          it'll have to distinguish between 3.20.10 and 3.201.0
      "#{match[1]}\.#{match[2]}\.#{match[3]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "Nozbe.app"
end
