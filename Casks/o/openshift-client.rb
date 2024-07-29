cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.5"
  sha256 arm:   "ae974ae39a1e852ab6faa6e1d046f8738ef1aea26141b5086c4f18fa79dbeb43",
         intel: "eee1ec2010c34186b2df3f41ccf52891bd98eed1b6671901c69c0643002d1090"

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
