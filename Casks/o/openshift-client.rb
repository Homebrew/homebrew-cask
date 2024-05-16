cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.14"
  sha256 arm:   "c79db6828cb8e03b7fd2d640ac695f9e9d016bc3bf140c5c0e2557cb8f7269c1",
         intel: "33ac9d5bbeaf902ddd362c50a03f80752a10ac9b66ce6ea5288a470c71cd93b1"

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
