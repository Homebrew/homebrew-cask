cask "sentinel" do
  version "0.18.0"
  sha256 "0a2390cf0bfae85ecf09f297c5bcb9a4673b315375bc02f8dba0bf83acf61dbe"

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_amd64.zip"
  name "Sentinel"
  desc "Language and framework for policy as code"
  homepage "https://docs.hashicorp.com/sentinel"

  livecheck do
    url "https://docs.hashicorp.com/sentinel/downloads"
    strategy :page_match
    regex(%r{href=.*?/sentinel_(\d+(?:\.\d+)*)_darwin_amd64\.zip}i)
  end

  binary "sentinel"
end
