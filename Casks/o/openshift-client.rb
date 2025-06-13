cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.0"
  sha256 arm:   "b58c16cd2a7be6253c74f7727871e816dc8bcba1969cc3848e1727d2cb6a93ce",
         intel: "7ab1540de94289bafbba1bf2fd0a36da3659e4e9771df7858e41fde057c28634"

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
