cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.15"
  sha256 arm:   "c0d409bafa04970cce85a788f50008610e8d893bf85c3cc993e335edf0fa0cb4",
         intel: "c6482b4641ef58d0ef17f929db29b87189a53e64a66dc74db494c7b108aa33b8"

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
