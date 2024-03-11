cask "elasticwolf" do
  version "5.1.7"
  sha256 "c5a69e5c9038dd9724548848251df22bfe37b867c548eb47349358bfbc94c863"

  url "https://s3-us-gov-west-1.amazonaws.com/elasticwolf/ElasticWolf-osx-#{version}.zip",
      verified: "s3-us-gov-west-1.amazonaws.com/elasticwolf/"
  name "AWS ElasticWolf Client Console"
  desc "Manage Amazon Web Services (AWS) cloud resources"
  homepage "https://aws.amazon.com/developer/tools/AWS-ElasticWolf-Client-Console/"

  disable! date: "2024-02-26", because: :no_longer_available

  app "ElasticWolf.app"
end
