cask "sentinel" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "0.18.10"

  if Hardware::CPU.intel?
    sha256 "c79d982cf24bbce38bcdbf7deb752ff629d76bba33c9f2b04f48be957113885d"
  else
    sha256 "5b116ef4dabaa58677f7a496b55511b091e3fd486d1ed7167e485e9f169f5a42"
  end

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_#{arch}.zip"
  name "Sentinel"
  desc "Language and framework for policy as code"
  homepage "https://docs.hashicorp.com/sentinel"

  livecheck do
    url "https://docs.hashicorp.com/sentinel/downloads"
    regex(%r{href=.*?/sentinel[._-]?v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.zip}i)
  end

  binary "sentinel"
end
