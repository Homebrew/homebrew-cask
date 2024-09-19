cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.14"
  sha256 arm:   "d71699b1808d790c4beb7cdc65b2c252c91f5c6662ecac778708efaa3fe6ddc0",
         intel: "60345fc9d1d208fe25c1cf97373356f784bbe105180dfb9fd91a740dd640ec49"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
