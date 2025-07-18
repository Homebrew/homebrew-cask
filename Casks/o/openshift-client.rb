cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.5"
  sha256 arm:   "2de0b7577c68bbf8742c36193d89c8dc6545657aa408a425c611ccea128bafe4",
         intel: "eb61d2d37a03ac9b2f5aaac8cc7a7bef624838ca71cba553b74b8b8da3b68e2e"

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
