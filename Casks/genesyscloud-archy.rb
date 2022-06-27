cask "genesyscloud-archy" do
  version "2.8.0"
  sha256 "8e5773e76e77d382153afae5111ce9795f0fa91e7bdeed6c5838226b93585501"

  url "https://sdk-cdn.mypurecloud.com/archy/#{version}/archy-macos.zip", verified: "https://sdk-cdn.mypurecloud.com/archy/"
  name "genesyscloud-archy"
  desc "Genesys Cloud Architect YAML processor that lets you create Architect flows"
  homepage "https://developer.genesys.cloud/devapps/archy/"

  livecheck do
    url "https://sdk-cdn.mypurecloud.com/archy/versions.json"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*)/i)
  end

  binary "archyBin/archy-macos-#{version}", target: "archy"
end
