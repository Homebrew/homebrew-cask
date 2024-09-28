cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.0"
  sha256 arm:   "96e6604431f0b8d171b984c9f4aadebf9623bcf8b4457606624587343548ee0d",
         intel: "0d7eeef63dbee179e6a7fc25c83bafc12263401e2607e21df716d0c8add5e2be"

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
