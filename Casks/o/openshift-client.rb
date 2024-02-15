cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.13"
  sha256 arm:   "a9e0083a2a59199a81b4c3b56dd1f265105f08675ab78d42455ae4ca5f73be44",
         intel: "8a3fd69b405567baf20a2781c4da58f520a9914dfb4973ee3e0309d861dbaeda"

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
