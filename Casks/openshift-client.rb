cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.1"
  sha256 arm:   "3bf27ab1eadb530b4d5726016e15d9ce83e5c89a943d0b40ba84a9c0299ee658",
         intel: "3cd47a42279fc43d8b82a22b84ce7e94e1707cb67a2786540a05c2e17dea2e0d"

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
