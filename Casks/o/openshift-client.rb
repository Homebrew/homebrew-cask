cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.16"
  sha256 arm:   "84cdc8c1a368e3f8f98f080e422a4003bd82cb5425295348804206e54e8e4faf",
         intel: "4505eab55819c937d04ea39caa456c479b711d56a00d72c77be5e8c4cb655362"

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
